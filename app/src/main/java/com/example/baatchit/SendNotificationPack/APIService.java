package com.example.baatchit.SendNotificationPack;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;

public interface APIService {
    @Headers(
            {
                    "Content-Type:application/json",
                    "Authorization:key=AAAAr2KHYNY:APA91bHT2Spfw_ZnjXe9Z8IJ5JPvmd2gFl6ITtDI3v2DM15ljGsDAMYRwMpidplz7Y3xhpcvRKXsrcKtE0VQ-oUmV3XYrcZ7PF3ddpvjnpi0yqd9I7kQ-zaMacJa589d09fUddgk6XtB"
            }
    )

    @POST("fcm/send")
    Call<MyResponse> sendNotifcation(@Body NotificationSender body);

}

