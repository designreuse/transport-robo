///*
// * Copyright 2015 JBoss Inc
// *
// * Licensed under the Apache License, Version 2.0 (the "License");
// * you may not use this file except in compliance with the License.
// * You may obtain a copy of the License at
// *
// *      http://www.apache.org/licenses/LICENSE-2.0
// *
// * Unless required by applicable law or agreed to in writing, software
// * distributed under the License is distributed on an "AS IS" BASIS,
// * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// * See the License for the specific language governing permissions and
// * limitations under the License.
// */
//
//package com.abb.trobo.controller;
//
//import java.awt.Color;
//import java.text.DecimalFormat;
//import java.text.NumberFormat;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.optaplanner.core.api.score.buildin.hardsoftlong.HardSoftLongScore;
//import org.optaplanner.examples.common.swingui.TangoColorFactory;
//import org.optaplanner.examples.vehiclerouting.domain.Customer;
//import org.optaplanner.examples.vehiclerouting.domain.Vehicle;
//import org.optaplanner.examples.vehiclerouting.domain.VehicleRoutingSolution;
//import org.optaplanner.examples.vehiclerouting.domain.location.Location;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.abb.trobo.vehiclerouting.VehicleRoutingSolverManager;
//import com.abb.trobo.vehiclerouting.domain.JsonCustomer;
//import com.abb.trobo.vehiclerouting.domain.JsonMessage;
//import com.abb.trobo.vehiclerouting.domain.JsonVehicleRoute;
//import com.abb.trobo.vehiclerouting.domain.JsonVehicleRoutingSolution;
//
//@RestController
//public class DefaultVehicleRoutingRestService  {
//
//    private static final NumberFormat NUMBER_FORMAT = new DecimalFormat("#,##0.00");
//
//    private VehicleRoutingSolverManager solverManager = VehicleRoutingSolverManager.getInstance();
//
//    @RequestMapping("/solution")
//    public JsonVehicleRoutingSolution getSolution(HttpServletRequest request) {
//        VehicleRoutingSolution solution = solverManager.retrieveOrCreateSolution(request.getSession().getId());
//        return convertToJsonVehicleRoutingSolution(solution);
//    }
//
//    protected JsonVehicleRoutingSolution convertToJsonVehicleRoutingSolution(VehicleRoutingSolution solution) {
//        JsonVehicleRoutingSolution jsonSolution = new JsonVehicleRoutingSolution();
//        jsonSolution.setName(solution.getName());
//        List<JsonCustomer> jsonCustomerList = new ArrayList<JsonCustomer>(solution.getCustomerList().size());
//        for (Customer customer : solution.getCustomerList()) {
//            Location customerLocation = customer.getLocation();
//            jsonCustomerList.add(new JsonCustomer(customerLocation.getId(), customerLocation.getName(),
//                    customerLocation.getLatitude(), customerLocation.getLongitude(), customer.getDemand()));
//        }
//        jsonSolution.setCustomerList(jsonCustomerList);
//        List<JsonVehicleRoute> jsonVehicleRouteList = new ArrayList<JsonVehicleRoute>(solution.getVehicleList().size());
//        TangoColorFactory tangoColorFactory = new TangoColorFactory();
//        for (Vehicle vehicle : solution.getVehicleList()) {
//            JsonVehicleRoute jsonVehicleRoute = new JsonVehicleRoute();
//            Location depotLocation = vehicle.getDepot().getLocation();
//            jsonVehicleRoute.setDepotLocationName(depotLocation.getName());
//            jsonVehicleRoute.setDepotLatitude(depotLocation.getLatitude());
//            jsonVehicleRoute.setDepotLongitude(depotLocation.getLongitude());
//            jsonVehicleRoute.setCapacity(vehicle.getCapacity());
//            Color color = tangoColorFactory.pickColor(vehicle);
//            jsonVehicleRoute.setHexColor(
//                    String.format("#%02x%02x%02x", color.getRed(), color.getGreen(), color.getBlue()));
//            Customer customer = vehicle.getNextCustomer();
//            int demandTotal = 0;
//            List<JsonCustomer> jsonVehicleCustomerList = new ArrayList<JsonCustomer>();
//            while (customer != null) {
//                Location customerLocation = customer.getLocation();
//                demandTotal += customer.getDemand();
//                jsonVehicleCustomerList.add(new JsonCustomer(customerLocation.getId(), customerLocation.getName(),
//                        customerLocation.getLatitude(), customerLocation.getLongitude(), customer.getDemand()));
//                customer = customer.getNextCustomer();
//            }
//            jsonVehicleRoute.setDemandTotal(demandTotal);
//            jsonVehicleRoute.setCustomerList(jsonVehicleCustomerList);
//            jsonVehicleRouteList.add(jsonVehicleRoute);
//        }
//        jsonSolution.setVehicleRouteList(jsonVehicleRouteList);
//        HardSoftLongScore score = solution.getScore();
//        jsonSolution.setFeasible(score != null && score.isFeasible());
//        jsonSolution.setDistance(solution.getDistanceString(NUMBER_FORMAT));
//        return jsonSolution;
//    }
//
//    @RequestMapping("/solution/solve")
//    public JsonMessage solve(HttpServletRequest request) {
//        boolean success = solverManager.solve(request.getSession().getId());
//        return new JsonMessage(success ? "Solving started." : "Solver was already running.");
//    }
//
//    @RequestMapping("/solution/terminateEarly")
//    public JsonMessage terminateEarly(HttpServletRequest request) {
//        boolean success = solverManager.terminateEarly(request.getSession().getId());
//        return new JsonMessage(success ? "Solver terminating early." : "Solver was already terminated.");
//    }
//
//}
