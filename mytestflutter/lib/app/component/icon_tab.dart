import 'package:flutter/material.dart';

const double _kTextAndIconTabHeight = 53.0;
const double _kMarginBottom = 3.0;

class IconTab extends StatefulWidget{

  const IconTab({
    Key key,
    this.text,
    this.icon,
    this.color,
  }): assert(text != null || icon != null || color != null),
    super(key:key);

  final String text;
  final String icon;
  final Color color;


  @override
  State<StatefulWidget> createState(){
    return new IconTabState();
  }

}

class IconTabState extends State<IconTab>{

  Widget _buildLabelTxt(){
    return new Text(widget.text,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: new TextStyle(
        color: widget.color
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    assert(debugCheckHasMaterial(context));
    double height = _kTextAndIconTabHeight;
    Widget label = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          child: new Image(
              image: new AssetImage(widget.icon),
              height: 30.0,
              width: 30.0,
          ),
          margin: const EdgeInsets.only(bottom: _kMarginBottom),
        ),
          _buildLabelTxt()
      ],
    );

    return new SizedBox(
      child: new Container(
        child: label,
        width: 50,
        height: 50,
      ),
    );

  }


}