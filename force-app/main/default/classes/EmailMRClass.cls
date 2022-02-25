//Gabriela Conrado 02/23/2022 7:29 a.m.
//This class sends an email. 


public class EmailMRClass {
    // This is the method created inside the class which has to be static to be called from the trigger. It has 3 parameters
    
    public static void sendMail(String address, String subject, String body) {
        // Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        // Pass this email message to the built-in sendEmail method 
        // of the Messaging class
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });
        
         // This method is called to verify the status of the delivery
        inspectResults(results);
        
    }   
    
     // This method inspects if the email was sent as intended or if any errors ocurred
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;
        // The method sendEmail returns an array of result objects.
        // This for iterates through the array to inspect results. 
        
        for (Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {
                System.debug('Email sent successfully');
            }
            else {
                sendResult = false;
                System.debug('Email delivery failed: ' + res.getErrors());                 
            }
        }
        return sendResult;
    }
}