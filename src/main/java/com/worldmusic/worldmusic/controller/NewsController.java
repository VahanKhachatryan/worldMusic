package com.worldmusic.worldmusic.controller;

import com.worldmusic.worldmusic.model.News;
import com.worldmusic.worldmusic.repository.NewsRepository;
import com.worldmusic.worldmusic.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsController {
    @Autowired
    private NewsRepository newsRepository;

    @GetMapping("/allNews")
    public String genrePage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("newses", newsRepository.findAll());
        return "allNews";
    }
    @PostMapping("/newsView")
    public String albumView() {
        return "redirect:/allNews";
    }
    @GetMapping("/deleteNews")
    public String genreDelete(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("newses", newsRepository.findAll());
        map.addAttribute("news", new News());
        return "deleteNews";
    }
    @GetMapping("/newsDelete")
    public String deleteAlbum(@RequestParam("newsId") int id) {
        newsRepository.delete(id);
        return "redirect:/deleteNews";
    }

}
