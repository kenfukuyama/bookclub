package com.kenfukuyama.examples.services;




import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kenfukuyama.examples.models.Book;
import com.kenfukuyama.examples.models.Book;
import com.kenfukuyama.examples.repositories.BookRepo;


@Service
public class BookService {
	@Autowired
	private BookRepo bookRepo;
//    private final BookRepo bookRepo;
//	
//	public BookService(BookRepo bookRepo) {
//		this.bookRepo = bookRepo;
//	}
	
	
	public List<Book> allBooks() {
		return bookRepo.findAll();
	}	
	
	// ! create
    public Book createBook(Book book) {
        return bookRepo.save(book);
    }
    
    
    // ! retrieves a book
    public Book findBook(Long id) {
    	// Optional Book that may or may not conatin Book
        Optional<Book> optionalBook = bookRepo.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    
    public Book updateBook(Book book) {
        return bookRepo.save(book);
    }
    
    
    
	

}
