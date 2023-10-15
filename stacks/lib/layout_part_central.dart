import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartCentral extends StatefulWidget {
  const LayoutPartCentral({super.key});

  @override
  LayoutPartCentralState createState() => LayoutPartCentralState();
}

class LayoutPartCentralState extends State<LayoutPartCentral> {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: appData.toggleSidebarLeft,
                  child: Icon(
                    CupertinoIcons.sidebar_left,
                    color: appData.isSidebarLeftVisible
                        ? CupertinoColors.activeBlue
                        : CupertinoColors.black,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),
              const SizedBox(width: 16),
            ],
          ),
          trailing: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: appData.toggleSidebarRight,
              child: Icon(
                CupertinoIcons.sidebar_right,
                color: appData.isSidebarRightVisible
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.black,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              )),
          middle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hola'),
              SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      title: Text('Opciones'),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Acciones al seleccionar la opción 1
                            Navigator.of(context).pop();
                          },
                          child: Text('Negre'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Acciones al seleccionar la opción 2
                            Navigator.of(context).pop();
                          },
                          child: Text('Vermell'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Acciones al seleccionar la opción 3
                            Navigator.of(context).pop();
                          },
                          child: Text('Verd'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Acciones al seleccionar la opción 4
                            Navigator.of(context).pop();
                          },
                          child: Text('Blau'),
                        ),
                      ],
                    ),
                  );
                },
                child: Icon(CupertinoIcons.heart),
              ),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Central")],
          ),
        ));
  }
}
