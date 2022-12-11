
package model;

import java.util.ArrayList;
import java.util.List;

public class orderModel 
{
    public List<String> getOrder(String type) 
    {
        
        List<String> info = new ArrayList<String>();
        
        if (type.equals("MEAL SET A")) {
            info.add("Roasted Whole Chicken");
            info.add("Shanghai Rolls");
            info.add("Pansit Canton");
            info.add("Yang Chao Rice");
            info.add("Iced Teas (x4)");
            
        } else if (type.equals("MEAL SET B")) {
            info.add("Sizzling Sisig");
            info.add("Prime Beef Kaldereta");
            info.add("Fried Bangus");
            info.add("Platter of Rice");
            info.add("Buko Pandans (x4)");
            info.add("Iced Teas (x4)");
        } else if (type.equals("MEAL SET C")) {
            info.add("Seafood Treasure Soup");
            info.add("Garlic Chicken");
            info.add("Sweet and Spicy Spareribs");
            info.add("Steamed Rice (x4)");
            info.add("Iced Teas (x4)");
        } else if (type.equals("MEAL SET D")) {
            info.add("Miki Bihon Binondo");
            info.add("Beef with Broccoli");
            info.add("Salt and Pepper Squid");
        } else {
            info = null;
        }
        return info;
    }
}
