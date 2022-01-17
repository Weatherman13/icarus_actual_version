package com.borz0y13.icarus4.testsAndTrash;

import com.borz0y13.icarus4.entity.pojo.filters.Coordinate;
import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.service.dao.SatelliteServiceImpl;
import com.borz0y13.icarus4.utils.Utils;

import java.io.IOException;
import java.net.URISyntaxException;
import java.text.ParseException;

public class testingJsonHandler {
    public static void main(String[] args) throws IOException, ParseException, InterruptedException, URISyntaxException {

        final String urlSceneSearch = "https://m2m.cr.usgs.gov/api/api/json/stable/scene-search";

        SatelliteServiceImpl repository;

        Utils utils = new Utils();


//        todo creating a test filter

        Filter filter = new Filter();
        filter.setDatasetName("landsat_ot_c2_l2");

        Coordinate coordinate1 = new Coordinate();
        Coordinate coordinate2 = new Coordinate();

        coordinate1.setX(55.84217);
        coordinate1.setY(38.32031);

        coordinate2.setX(55.76962);
        coordinate2.setY(38.46313);

        filter.getSceneFilter().getSpatialFilter().setLowerLeft(coordinate1);
        filter.getSceneFilter().getSpatialFilter().setUpperRight(coordinate2);

        filter.getSceneFilter().getCloudCoverFilter().setMax(30);
        filter.getSceneFilter().getCloudCoverFilter().setMin(1);








//          todo serialize filter -> string

//        String filterInJSON = new ObjectMapper().writeValueAsString(filter);
//
//          todo creating and sending http request
//
//        HttpRequest request = HttpRequest.newBuilder()
//                .uri(new URI(urlSceneSearch))
//                .POST(HttpRequest.BodyPublishers.ofString(filterInJSON))
//                .header("Content-Type", "application/json")
//                .header("X-Auth-Token", utils.tokenGenerator().getToken())
//                .build();
//        HttpResponse<String> response = HttpClient.newBuilder()
//                .followRedirects(HttpClient.Redirect.ALWAYS)
//                .build()
//                .send(request, HttpResponse.BodyHandlers.ofString());
//


//        todo testing JsonNode

//        JSONObject json = new JSONObject(response.body());



//        ObjectMapper mapper = new ObjectMapper();
//        Scene scene = mapper.readValue(json.toString(), Scene.class);
//
//        JsonNode jsonNode = new ObjectMapper().readTree(String.valueOf(json));
//        Scene sceneIdentificatior = new Scene();
//        sceneIdentificatior.setCloudCover(jsonNode.get("version").textValue());
//        sceneIdentificatior.setEntityId(jsonNode.get("data").get("results").get(1).get("entityId").textValue());
////        System.out.println(sceneIdentificatior);
//
////       todo serializer for SceneIdentificator
//
//
//        JSONObject obj = new JSONObject(response.body());
//
//        JSONArray results = obj.getJSONObject("data").getJSONArray("results");
//
//
//        ObjectMapper mapper = new ObjectMapper();
//        JsonNode node = new ObjectMapper().readTree(String.valueOf(results));
//
//        for (int i = 0; i < results.length(); i++) {
//
//        Scene scene = mapper.readValue(node.get(i).toString(), Scene.class);
//            System.out.println(scene);




//            scene.setEntityId(node.get(i).get("entityId").textValue());
//            scene.setDisplayId(node.get(i).get("displayId").textValue());
//            scene.setCloudCover(node.get(i).get("cloudCover").textValue());
//            scene.setDownloadId(node.get(i).get("browse").get(0).get("id").textValue());
//            System.out.println(scene);






//        }





    }
}
