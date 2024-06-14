import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teamplate_app/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kCoLorPrimary,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: [
                  const GetStatedBackground(),
                  const FractionallySizedBox(
                    heightFactor: 0.4,
                    child: GetStartedHeader(),
                  ),
                  Align(
                    alignment: const Alignment(0.0, 0.8),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('GET STARTED'),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(kColorLightGrey),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all(
                          Size(
                            size.width * 0.8,
                            size.height * 0.07,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Row(
                children: const [
                  Expanded(
                      child: Align(
                    alignment: Alignment.topCenter,
                    child: FractionallySizedBox(
                        heightFactor: 0.8, child: GetStartedHeader()),
                  )),
                  Expanded(child: GetStatedBackground()),
                ],
              ),
      ),
    );
  }
}

class GetStatedBackground extends StatelessWidget {
  const GetStatedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
          heightFactor: orientation == Orientation.portrait ? 0.6 : 0.8,
          widthFactor: 0.9,
          child: FittedBox(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              clipBehavior: Clip.antiAlias,
              child: SvgPicture.asset('assets/images/bg_get_started.svg'))),
    );
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Expanded(
            child: SvgPicture.asset(
              'assets/images/ic_logo.svg',
              alignment: Alignment(0.0, -0.8),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Hi User, Welcome \n',
                    style: PrimaryFont.medium(30)
                        .copyWith(color: kColorLightYellow, height: 1.3),
                    children: [
                      TextSpan(
                          text: 'to Silent Moon',
                          style: PrimaryFont.thin(30).copyWith(
                            color: kColorLightYellow,
                          ))
                    ]),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: SizedBox.expand(
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Explore the app, Find some peace of mind to perepare for meditation.',
                        style: PrimaryFont.light(16).copyWith(
                          color: kColorLightGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        )
      ],
    );
  }
}
