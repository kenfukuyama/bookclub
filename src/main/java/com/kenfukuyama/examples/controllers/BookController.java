package com.kenfukuyama.examples.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kenfukuyama.examples.models.Book;
import com.kenfukuyama.examples.repositories.BookRepo;
import com.kenfukuyama.examples.services.BookService;
import com.kenfukuyama.examples.services.UserService;


@Controller
public class BookController {
//    private final BookService bookService;
//    private final UserService userService;
//
//    
//    
//    public BookController(BookService bookService, UserService userService) {
//        this.bookService = bookService;
//        this.userService = userService;
//    }
	@Autowired 
	private BookService bookService;
	@Autowired 
	private UserService userService;
	
    
    // ! new Book
    @GetMapping("/books/add")
    public String addBook(@ModelAttribute("book") Book book, Model model,
    		HttpSession session) {
    	model.addAttribute("userId", (Long)session.getAttribute("userId"));
    	
        return "newBook.jsp";

    }
    
    // ! POST books
    @PostMapping("/books")
    public String createBook(@Valid @ModelAttribute("book") Book book,
            BindingResult result) {

        if (result.hasErrors()) {
            return "newBook.jsp";
        }
       

        bookService.createBook(book);
        return "redirect:/home";
    }
    
    
    // ! show book page
    @GetMapping("/books/{id}/show")
    public String showBook(@PathVariable("id") Long id, Model model, HttpSession session) {
    	model.addAttribute("book", bookService.findBook(id));
    	model.addAttribute("userId", (Long)session.getAttribute("userId"));
    	return "showBook.jsp";
    	
    }
    
    
    // ! Edit book page
    @GetMapping("/books/{id}/edit")
    public String editBook(@PathVariable("id") Long id, Model model) {
    	model.addAttribute("book", bookService.findBook(id));
    	return "editBook.jsp";

    }
    
    
    // edit put request
    @RequestMapping(value="/books/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("book") Book book, BindingResult result) {
        if (result.hasErrors()) {
            return  "editBook.jsp";
        } else {
            bookService.updateBook(book);
            return "redirect:/home";
        }
        
        
        
    }
    
    
    
    
    
    

    
    
    

}
