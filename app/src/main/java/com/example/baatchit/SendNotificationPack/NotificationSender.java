package com.example.baatchit.SendNotificationPack;

public class NotificationSender {
    public Data data;
    public String to;

    public NotificationSender(Data data, String to) {
        this.data = data;
        this.to = to;
    }

    public NotificationSender() {
    }

    public NotificationSender(Data2 data, String token) {
    }
}
