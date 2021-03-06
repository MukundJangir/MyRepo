//Generated by wsdl2apex

public class jeeJavapapersCom {
    public class animalType_element {
        public String animal;
        private String[] animal_type_info = new String[]{'animal','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://jee.javapapers.com','true','false'};
        private String[] field_order_type_info = new String[]{'animal'};
    }
    public class animalTypeResponse_element {
        public String animalTypeReturn;
        private String[] animalTypeReturn_type_info = new String[]{'animalTypeReturn','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://jee.javapapers.com','true','false'};
        private String[] field_order_type_info = new String[]{'animalTypeReturn'};
    }
    public class AnimalTypeService {
        public String endpoint_x = 'http://10.75.129.48:8080/WSServer/services/AnimalTypeService';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://jee.javapapers.com', 'jeeJavapapersCom'};
        public String animalType(String animal) {
            jeeJavapapersCom.animalType_element request_x = new jeeJavapapersCom.animalType_element();
            jeeJavapapersCom.animalTypeResponse_element response_x;
            request_x.animal = animal;
            Map<String, jeeJavapapersCom.animalTypeResponse_element> response_map_x = new Map<String, jeeJavapapersCom.animalTypeResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://jee.javapapers.com',
              'animalType',
              'http://jee.javapapers.com',
              'animalTypeResponse',
              'jeeJavapapersCom.animalTypeResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.animalTypeReturn;
        }
    }
}