//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package thuyloi_aodv.simulations.routing;

import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import thuyloi_aodv.veins_inet.VeinsInetRoutingCar;
import thuyloi_aodv.veins_inet.VeinsInetManager;
// Add thu vien hien thi map
import inet.visualizer.common.IntegratedVisualizer;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import org.car2x.veins.visualizer.roads.RoadsOsgVisualizer;
import inet.environment.common.PhysicalEnvironment;
//
// TODO auto-generated type
//
network RoutingScenario
{
    parameters:
        bool useOsg = default(false);
        @display("bgb=319,384");
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium;
        manager: VeinsInetManager;
        visualizer: IntegratedVisualizer {
            @display("p=64,320");
        }
		physicalEnvironment: PhysicalEnvironment {
            @display("p=192,224");
        }
		roadsCanvasVisualizer: RoadsCanvasVisualizer {
            @display("p=64,416");
        }
        roadsOsgVisualizer: RoadsOsgVisualizer if useOsg {
            @display("p=192,416");
        }
        node[0]: VeinsInetRoutingCar;
}
