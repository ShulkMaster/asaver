import 'package:flutter/material.dart';
import 'package:pokedex/CoverCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este es eñ widget que contiene todos los demas basicamente es la caja donde meto los
  // todos los demas widgets.
  @override //override significa sobre escribir la funcion de mi papa StatelessWidget
  //aunque que ya exite y es obligatorio para esta funcion build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // este es el tema de la aplicacion.

        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  /// Este es un stateful widget por lo que es mutable es decir que las variables pueden
  /// cambiar en el tiempo no solo cunado las creo es decir agregar el modificador
  /// final o const no es necesario
  final String title;

  ///_MyHomePageState es una clase o el molde del estado del widget es decir el widget
  ///y su estod son indepéndientes de cada uno esto es un patron llamado dependency injection o DP

  ///si en un stateless widged nos fuerza a sobreescribit con @ovveride el metodo build
  ///un stateful widget nos exige sobreescribir createState
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// este es el estado en el estado si es posible tener valores mutables es decir que aun
  /// despues que se crean se puede actualizar el valor y por tanto el modificador final no es necesario
  int _counter = 8;

  void _incrementCounter() {
    setState(() {
      /// esta funcion setState se encarga de actualizar valores del estado e inmediatamente despues
      /// llamar a la funcion build del widget papa para que los cambios que haga se vean en pantalla
      /// si uno cambia valores sin volver a dibujar la pantalla entonces pareria que nada paso
      _counter = _counter + -2;
    });
  }

  @override
  Widget build(BuildContext context) {
    ///Esta funcion se ejectua despues de cada setState que ocurra en el estado
    ///no te preoucpes si necesitas actualizar muchas veces fluter esta optimizado para estos casos
    ///dond actualizar muchas cosas muchas veces es una tarea facil para el
    return Scaffold(
      appBar: AppBar(
        ///Se agragan algunas propiedades a la barra para cambiar su estilo
        title: Text(widget.title),
      ),
      body: Center(
        ///center es un widget que automaticamne centra a los hijos dentro del padre
        child: Column(
         ///colunm es un widget que OMG pone todos los hijos en pocicion de columna
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Mi imgagen de internet',
            ),
            CoverCard(
              url:
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CoverCard(
              url:
                  'https://www.audubon.org/sites/default/files/web_a1_1902_16_barred-owl_sandra_rothenberg_kk.jpg',
            ),
            CoverCard(
              url:
                  'https://www.audubon.org/sites/default/files/web_a1_1902_16_barred-owl_sandra_rothenberg_kk.jpg',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
