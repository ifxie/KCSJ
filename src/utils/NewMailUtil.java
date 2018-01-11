package utils;

import bean.User_detail;
import org.apache.commons.mail.*;
import org.apache.commons.mail.resolver.DataSourceUrlResolver;

import java.net.MalformedURLException;
import java.net.URL;

public class NewMailUtil {
    /**
     * @describe 发送包含附件的邮件（附件为在线资源）
     * @throws EmailException
     * @throws MalformedURLException
     */
    public static void sendEmailsWithOnlineAttachments(User_detail user, String path, String to,String filename) throws EmailException, MalformedURLException {
        // Create the attachment
        EmailAttachment attachment = new EmailAttachment();
        attachment.setURL(new URL("http://mengzh.oss-cn-hangzhou.aliyuncs.com/"+path+"/"+filename));
        attachment.setDisposition(EmailAttachment.ATTACHMENT);
        attachment.setDescription("上交作业");
        attachment.setName(filename);

        // Create the email message
        MultiPartEmail email = new MultiPartEmail();
        email.setHostName("smtp.163.com");
        email.addTo(to);
        email.setAuthentication("Mr_mzh@163.com","mzh19950810");
        email.setSmtpPort(25);
        email.setSSLOnConnect(true);
        email.setFrom("Mr_mzh@163.com", user.getUsername());
        email.setSubject("上交作业");
        email.setMsg("作业已上交");

        // add the attachment
        email.attach(attachment);

        // send the email
        email.send();
        System.out.println("send");
    }

}
