//
// Copyright (C) 2006-2017 Christoph Sommer <sommer@ccs-labs.org>
//
// Documentation for these modules is at http://veins.car2x.org/
//
// SPDX-License-Identifier: GPL-2.0-or-later
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//

package test.simulations.veins_inet_thuy_loi_aodv;

//#if INET_VERSION < 0x0403
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
//#else
import inet.physicallayer*.wireless.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
//#endif
import test.veins_inet.VeinsInetManager;
//#if INET_VERSION < 0x0403
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
//#else
import inet.visualizer*.common.IntegratedVisualizer;
//#endif
import inet.environment.common.PhysicalEnvironment;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import org.car2x.veins.visualizer.roads.RoadsOsgVisualizer;
//Import thu vien VeinInetRoutingCar
import test.veins_inet.VeinsInetManager;
import test.veins_inet.VeinsInetRoutingCar;

network Scenario
{
    parameters:
        bool useOsg = default(false);
        @display("bgb=1772.136,1987.16");
    submodules:
        radioMedium: Ieee80211DimensionalRadioMedium {
            @display("p=64,224");
        }
        manager: VeinsInetManager {
            @display("p=192,320");
        }
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
        //Change from VeinsInetCar to VeinsInetRoutingCar
        node[0]: VeinsInetRoutingCar;
}
