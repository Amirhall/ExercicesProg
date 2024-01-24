package intra.externe;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class LibExterne {
    public static void main( String[] args ) throws IOException {

        // TODO ton code ici
        Document doc = Jsoup.connect("https://info.cegepmontpetit.ca/3N5-Prog3/tp/tp2").get();
        Elements links = doc.getElementsByTag("img");
        for (Element link : links) {
            System.out.println(link.attr("src"));
        }


    }
}
