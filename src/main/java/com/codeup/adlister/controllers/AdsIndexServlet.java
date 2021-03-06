package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.setAttribute("cats", DaoFactory.getCategoriesDao().all());
        try {
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
            response.sendRedirect("/error");
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long adId = Long.parseLong(request.getParameter("button"));
        Ad myad = DaoFactory.getAdsDao().showAd(adId);
        request.setAttribute("ads", myad);
        response.sendRedirect("/da");
    }
}