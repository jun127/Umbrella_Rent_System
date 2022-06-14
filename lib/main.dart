import 'package:flutter/material.dart';
import 'ex.dart';
import 'dart:async';


import 'package:flutter_blue/flutter_blue.dart';
import 'widgets.dart';


Map student = {
  'id': '0',
  'pw': '0'
};
Map nowstudent ={
  'id': '0',
  'pw': '0'
};
Map studentbr = {};
Map studentum = {};

Map umuser = {
  'um1': '없음',
  'um2': '없음',
  'um3': '없음',
  'um4': '없음',
  'um5': '없음',
  'um6': '없음',
  'um7': '없음',
  'um8': '없음',
  'um9': '없음',
  'um10': '없음',
  'um11': '없음',
  'um12': '없음',



};

Map um = {
  'um1' : '0',
  'um2' : '0',
  'um3' : '0',
  'um4' : '0',
  'um5' : '0',
  'um6' : '0',
  'um7' : '0',
  'um8' : '0',
  'um9' : '0',
  'um10' : '0',
  'um11' : '0',
  'um12' : '0',

};




Set usernames = {
  '1101',
  '1102',
  '1103',
  '1104',
  '1105',
  '1106',
  '1107',
  '1108',
  '1109',
  '1110',
  '1111',
  '1112',
  '1113',
  '1114',
  '1115',
  '1116',
  '1117',
  '1118',
  '1119',
  '1120',
  '1121',
  '1122',
  '1123',
  '1124',
  '1125',
  '1126',
  '1127',


  '1201',
  '1202',
  '1203',
  '1204',
  '1205',
  '1206',
  '1207',
  '1208',
  '1209',
  '1210',
  '1211',
  '1212',
  '1213',
  '1214',
  '1215',
  '1216',
  '1217',
  '1218',
  '1219',
  '1220',
  '1221',
  '1222',
  '1223',
  '1224',
  '1225',
  '1226',
  '1227',


  '1301',
  '1302',
  '1303',
  '1304',
  '1305',
  '1306',
  '1307',
  '1308',
  '1309',
  '1310',
  '1311',
  '1312',
  '1313',
  '1314',
  '1315',
  '1316',
  '1317',
  '1318',
  '1319',
  '1320',
  '1321',
  '1322',
  '1323',
  '1324',
  '1325',
  '1326',
  '1327',


  '1401',
  '1402',
  '1403',
  '1404',
  '1405',
  '1406',
  '1407',
  '1408',
  '1409',
  '1410',
  '1411',
  '1412',
  '1413',
  '1414',
  '1415',
  '1416',
  '1417',
  '1418',
  '1419',
  '1420',
  '1421',
  '1422',
  '1423',
  '1424',
  '1425',
  '1426',
  '1427',



  '1501',
  '1502',
  '1503',
  '1504',
  '1505',
  '1506',
  '1507',
  '1508',
  '1509',
  '1510',
  '1511',
  '1512',
  '1513',
  '1514',
  '1515',
  '1516',
  '1517',
  '1518',
  '1519',
  '1520',
  '1521',
  '1522',
  '1523',
  '1524',
  '1525',
  '1526',
  '1527',

  '1601',
  '1602',
  '1603',
  '1604',
  '1605',
  '1606',
  '1607',
  '1608',
  '1609',
  '1610',
  '1611',
  '1612',
  '1613',
  '1614',
  '1615',
  '1616',
  '1617',
  '1618',
  '1619',
  '1620',
  '1621',
  '1622',
  '1623',
  '1624',
  '1625',
  '1626',
  '1627',

  '1701',
  '1702',
  '1703',
  '1704',
  '1705',
  '1706',
  '1707',
  '1708',
  '1709',
  '1710',
  '1711',
  '1712',
  '1713',
  '1714',
  '1715',
  '1716',
  '1717',
  '1718',
  '1719',
  '1720',
  '1721',
  '1722',
  '1723',
  '1724',
  '1725',
  '1726',
  '1727',

  '1801',
  '1802',
  '1803',
  '1804',
  '1805',
  '1806',
  '1807',
  '1808',
  '1809',
  '1810',
  '1811',
  '1812',
  '1813',
  '1814',
  '1815',
  '1816',
  '1817',
  '1818',
  '1819',
  '1820',
  '1821',
  '1822',
  '1823',
  '1824',
  '1825',
  '1826',
  '1827',


  '2101',
  '2102',
  '2103',
  '2104',
  '2105',
  '2106',
  '2107',
  '2108',
  '2109',
  '2110',
  '2111',
  '2112',
  '2113',
  '2114',
  '2115',
  '2116',
  '2117',
  '2118',
  '2119',
  '2120',
  '2121',
  '2122',
  '2123',
  '2124',
  '2125',
  '2126',
  '2127',


  '2201',
  '2202',
  '2203',
  '2204',
  '2205',
  '2206',
  '2207',
  '2208',
  '2209',
  '2210',
  '2211',
  '2212',
  '2213',
  '2214',
  '2215',
  '2216',
  '2217',
  '2218',
  '2219',
  '2220',
  '2221',
  '2222',
  '2223',
  '2224',
  '2225',
  '2226',
  '2227',


  '2301',
  '2302',
  '2303',
  '2304',
  '2305',
  '2306',
  '2307',
  '2308',
  '2309',
  '2310',
  '2311',
  '2312',
  '2313',
  '2314',
  '2315',
  '2316',
  '2317',
  '2318',
  '2319',
  '2320',
  '2321',
  '2322',
  '2323',
  '2324',
  '2325',
  '2326',
  '2327',



  '2401',
  '2402',
  '2403',
  '2404',
  '2405',
  '2406',
  '2407',
  '2408',
  '2409',
  '2410',
  '2411',
  '2412',
  '2413',
  '2414',
  '2415',
  '2416',
  '2417',
  '2418',
  '2419',
  '2420',
  '2421',
  '2422',
  '2423',
  '2424',
  '2425',
  '2426',
  '2427',


  '2501',
  '2502',
  '2503',
  '2504',
  '2505',
  '2506',
  '2507',
  '2508',
  '2509',
  '2510',
  '2511',
  '2512',
  '2513',
  '2514',
  '2515',
  '2516',
  '2517',
  '2518',
  '2519',
  '2520',
  '2521',
  '2522',
  '2523',
  '2524',
  '2525',
  '2526',
  '2527',

  '2601',
  '2602',
  '2603',
  '2604',
  '2605',
  '2606',
  '2607',
  '2608',
  '2609',
  '2610',
  '2611',
  '2612',
  '2613',
  '2614',
  '2615',
  '2616',
  '2617',
  '2618',
  '2619',
  '2620',
  '2621',
  '2622',
  '2623',
  '2624',
  '2625',
  '2626',
  '2627',



  '2701',
  '2702',
  '2703',
  '2704',
  '2705',
  '2706',
  '2707',
  '2708',
  '2709',
  '2710',
  '2711',
  '2712',
  '2713',
  '2714',
  '2715',
  '2716',
  '2717',
  '2718',
  '2719',
  '2720',
  '2721',
  '2722',
  '2723',
  '2724',
  '2725',
  '2726',
  '2727',


  '2801',
  '2802',
  '2803',
  '2804',
  '2805',
  '2806',
  '2807',
  '2808',
  '2809',
  '2810',
  '2811',
  '2812',
  '2813',
  '2814',
  '2815',
  '2816',
  '2817',
  '2818',
  '2819',
  '2820',
  '2821',
  '2822',
  '2823',
  '2824',
  '2825',
  '2826',
  '2827',



  '3101',
  '3102',
  '3103',
  '3104',
  '3105',
  '3106',
  '3107',
  '3108',
  '3109',
  '3110',
  '3111',
  '3112',
  '3113',
  '3114',
  '3115',
  '3116',
  '3117',
  '3118',
  '3119',
  '3120',
  '3121',
  '3122',
  '3123',
  '3124',
  '3125',
  '3126',
  '3127',


  '3201',
  '3202',
  '3203',
  '3204',
  '3205',
  '3206',
  '3207',
  '3208',
  '3209',
  '3210',
  '3211',
  '3212',
  '3213',
  '3214',
  '3215',
  '3216',
  '3217',
  '3218',
  '3219',
  '3220',
  '3221',
  '3222',
  '3223',
  '3224',
  '3225',
  '3226',
  '3227',



  '3301',
  '3302',
  '3303',
  '3304',
  '3305',
  '3306',
  '3307',
  '3308',
  '3309',
  '3310',
  '3311',
  '3312',
  '3313',
  '3314',
  '3315',
  '3316',
  '3317',
  '3318',
  '3319',
  '3320',
  '3321',
  '3322',
  '3323',
  '3324',
  '3325',
  '3326',
  '3327',


  '3401',
  '3402',
  '3403',
  '3404',
  '3405',
  '3406',
  '3407',
  '3408',
  '3409',
  '3410',
  '3411',
  '3412',
  '3413',
  '3414',
  '3415',
  '3416',
  '3417',
  '3418',
  '3419',
  '3420',
  '3421',
  '3422',
  '3423',
  '3424',
  '3425',
  '3426',
  '3427',



  '3501',
  '3502',
  '3503',
  '3504',
  '3505',
  '3506',
  '3507',
  '3508',
  '3509',
  '3510',
  '3511',
  '3512',
  '3513',
  '3514',
  '3515',
  '3516',
  '3517',
  '3518',
  '3519',
  '3520',
  '3521',
  '3522',
  '3523',
  '3524',
  '3525',
  '3526',
  '3527',


  '3601',
  '3602',
  '3603',
  '3604',
  '3605',
  '3606',
  '3607',
  '3608',
  '3609',
  '3610',
  '3611',
  '3612',
  '3613',
  '3614',
  '3615',
  '3616',
  '3617',
  '3618',
  '3619',
  '3620',
  '3621',
  '3622',
  '3623',
  '3624',
  '3625',
  '3626',
  '3627',


  '3701',
  '3702',
  '3703',
  '3704',
  '3705',
  '3706',
  '3707',
  '3708',
  '3709',
  '3710',
  '3711',
  '3712',
  '3713',
  '3714',
  '3715',
  '3716',
  '3717',
  '3718',
  '3719',
  '3720',
  '3721',
  '3722',
  '3723',
  '3724',
  '3725',
  '3726',
  '3727',

  '3801',
  '3802',
  '3803',
  '3804',
  '3805',
  '3806',
  '3807',
  '3808',
  '3809',
  '3810',
  '3811',
  '3812',
  '3813',
  '3814',
  '3815',
  '3816',
  '3817',
  '3818',
  '3819',
  '3820',
  '3821',
  '3822',
  '3823',
  '3824',
  '3825',
  '3826',
  '3827',

  '0111'
};


void main() async {

  runApp(const URS());

}


class URS extends StatelessWidget {
  const URS({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '무인 양심우산 대여 시스템',
      theme: ThemeData(
       primaryColor: Colors.black87,

      ),
      home:  StreamBuilder<BluetoothState>(
        stream: FlutterBlue.instance.state,
        initialData: BluetoothState.unknown,
        builder: (c, snapshot) {
          final state = snapshot.data;
          if (state == BluetoothState.on) {
            return const FindDevicesScreen();
          }
          return BluetoothOffScreen(state: state);
        }),//Login(),
    );
  }
}



/*void main() {
  runApp(FlutterBlueApp());
}*/

class BluetoothOffScreen extends StatelessWidget {
  const BluetoothOffScreen({Key? key, this.state}) : super(key: key);

  final BluetoothState? state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.bluetooth_disabled,
              size: 200.0,
              color: Colors.black38,
            ),
            Text(
              'Bluetooth Adapter is ${state != null ? state.toString().substring(15) : 'not available'}.',),
           /* SizedBox(
              height: 40,
              width: 100,
              child: OutlinedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FindDevicesScreen()),
                  );
                },
                child: const Text('NEXT', style: TextStyle(fontSize: 20)),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    side: const BorderSide(
                        color: Colors.black,
                        width: 1.5
                    )
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

class FindDevicesScreen extends StatelessWidget {
  const FindDevicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Devices'),
        backgroundColor: Colors.black,
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            FlutterBlue.instance.startScan(timeout: const Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 1000,
            child: Column(
            children: <Widget>[
              StreamBuilder<List<BluetoothDevice2>>(
                stream: Stream.periodic(const Duration(seconds: 2))
                    .asyncMap((_) => FlutterBlue.instance.connectedDevices),
                initialData: const [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map((d) => ListTile(
                    title: Text(d.name),
                    subtitle: Text(d.id.toString()),
                    trailing: StreamBuilder<BluetoothDeviceState>(
                      stream: d.state,
                      initialData: BluetoothDeviceState.disconnected,
                      builder: (c, snapshot) {
                        if (snapshot.data ==
                            BluetoothDeviceState.connected) {
                          return ElevatedButton(
                            child: const Text('OPEN'),
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DeviceScreen(device: d))),
                          );
                        }
                        return Text(snapshot.data.toString());
                      },
                    ),
                  ))
                      .toList(),
                ),
              ),
              StreamBuilder<List<ScanResult>>(
                stream: FlutterBlue.instance.scanResults,
                initialData: const [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map(
                        (r) => ScanResultTile(
                      result: r,
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        r.device.connect();
                        return DeviceScreen(device: r.device);
                      })),
                    ),
                  )
                      .toList(),
                ),
              ),
            ],
          ),)
        ),
      ),
      floatingActionButton: StreamBuilder<bool>(
        stream: FlutterBlue.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              child: const Icon(Icons.stop),
              onPressed: () => FlutterBlue.instance.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () => FlutterBlue.instance
                    .startScan(timeout: const Duration(seconds: 4)));
          }
        },
      ),
    );
  }
}

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({Key? key, required this.device}) : super(key: key);

  final BluetoothDevice2 device;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(device.name),
        backgroundColor: Colors.black,
        actions: <Widget>[
          StreamBuilder<BluetoothDeviceState>(
            stream: device.state,
            initialData: BluetoothDeviceState.connecting,
            builder: (c, snapshot) {
              VoidCallback? onPressed;
              String text;
              switch (snapshot.data) {
                case BluetoothDeviceState.connected:
                  onPressed = () => device.disconnect();
                  text = 'DISCONNECT';
                  break;
                case BluetoothDeviceState.disconnected:
                  onPressed = () => device.connect();
                  text = 'CONNECT';
                  break;
                default:
                  onPressed = null;
                  text = snapshot.data.toString().substring(21).toUpperCase();
                  break;
              }
              return TextButton(
                  onPressed: onPressed,
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .button
                        ?.copyWith(color: Colors.white),
                  ));
            },
          )
        ],
      ),
      body: Column(
            children: [
              Column(
                children: <Widget>[
                  StreamBuilder<BluetoothDeviceState>(
                    stream: device.state,
                    initialData: BluetoothDeviceState.connecting,
                    builder: (c, snapshot) => ListTile(
                      leading: (snapshot.data == BluetoothDeviceState.connected)
                          ? const Icon(Icons.bluetooth_connected)
                          : const Icon(Icons.bluetooth_disabled),
                      title: Text(
                          'Device is ${snapshot.data.toString().split('.')[1]}.'),
                      subtitle: Text('${device.id}'),
                      trailing: StreamBuilder<bool>(
                        stream: device.isDiscoveringServices,
                        initialData: false,
                        builder: (c, snapshot) => IndexedStack(
                          index: snapshot.data! ? 1 : 0,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.refresh),
                              onPressed: () => device.discoverServices(),
                            ),
                            const IconButton(
                              icon: SizedBox(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(Colors.grey),
                                ),
                                width: 18.0,
                                height: 18.0,
                              ),
                              onPressed: null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                  children:[Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 100,
                        child: OutlinedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ex()),
                            );
                          },
                          child: const Text('NEXT', style: TextStyle(fontSize: 20)),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              side: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5
                              )
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      )
                    ],
                  )
                  ]
              )
          ]
      ),

    );
  }
}




