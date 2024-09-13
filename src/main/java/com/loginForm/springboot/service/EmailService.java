package com.loginForm.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.loginForm.springboot.model.CallbackRequest;

@Service
public class EmailService {
    @Autowired
    private JavaMailSender javaMailSender;
    @Autowired
    private JavaMailSender mailSender;

    public void sendConfirmationEmail(String to, String name, String date, String service,String timeSlot,String workshop,String location) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Booking Confirmation");
        message.setText(String.format("Hello %s,\n\n"
        + "Your booking for %s has been successfully received.\n\n"
        + "Date:  %s \nTime: %s \nLocation: %s \nWorkshop: %s"
       
        + "\n\nThank you for choosing our service!", name, service, date,timeSlot,workshop,location));

        javaMailSender.send(message);
    }
    public void sendCallbackRequestEmail(CallbackRequest callbackRequest) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("workshopsnearme@gmail.com"); // The email where the form data will be sent
        message.setSubject("New Callback Request");

        String emailContent = String.format(
                "A new callback request has been submitted.%n%nFirst Name: %s%nVehicle Details: %s%nMobile Phone: %s%nEmail ID: %s",
                callbackRequest.getFirstName(),
                callbackRequest.getVehicleDetails(),
                callbackRequest.getMobilePhone(),
                callbackRequest.getEmailId()
        );

        message.setText(emailContent);

        mailSender.send(message);
    }
    public void sendConfirmationEmails(String to, String name,String service, String date,String timeSlot, String workshop, String location ) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Booking Confirmation");
        message.setText(String.format("Hello %s %n"
        		+ "Your vehicle service request for %s on %s at %s  has been accepted, We will contact you soon."
        		+ "%n Regards%n"
        		+ "%s %n"
        		+ "%s",name, service,date,timeSlot,workshop,location 
        		));

        javaMailSender.send(message);
    }

    public void sendDeclineEmail(String to,String name, String service, String date,String timeSlot,String workshop, String location ) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Booking Declined");
        message.setText(String.format("Hi %s %n"
        		+ "We are unable to accept your request for %s on %s at %s. Please book your service later."
        		+"%nRegards%n"
        		+"%s%n"
        		+"%s",name, service,date,timeSlot,workshop,location));

        javaMailSender.send(message);
    }
   

}
