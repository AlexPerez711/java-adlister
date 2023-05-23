package dao;

import dao.Ads;
import models.Ad;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
                1,
                1,
                "2013 Ford Fusion for Sale",
                "This is a slightly used Fusion... Cons: bad transmission, no A/C , Pros: it looks ok."
        ));
        ads.add(new Ad(
                2,
                1,
                "Used Paper towels for sale",
                "Clean your house on a budget!"
        ));
        ads.add(new Ad(
                3,
                2,
                "Room for rent",
                "COZY room underneath the stairs about 50sqft. Must see!"
        ));
        ads.add(new Ad(
                4,
                2,
                "Lizard for adoption!",
                "Lizard for adoption lizard has no legs is about 3 feet long and always says 'sSsSSSss'"
        ));
        return ads;
    }
}