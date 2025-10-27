import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';


class FavouriteIconWidget extends StatefulWidget {
  final Future<void> Function()? onFav;
  final Future<void> Function()? removeFav;
  final ObsValue<bool> isFavObs;
  final Color? unFavColor;

  const FavouriteIconWidget(
      {super.key,
      this.onFav,
      this.removeFav,
      required this.isFavObs,
      this.unFavColor});

  @override
  State<FavouriteIconWidget> createState() => _FavouriteIconWidgetState();
}

class _FavouriteIconWidgetState extends State<FavouriteIconWidget> {
  final ObsValue<bool> isLoadingFavObs = ObsValue.withInit(false);

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      observable: widget.isFavObs,
      builder: (context, isFav) => _handleFavIcon(isFav),
    );
  }

  ObsValueConsumer<bool> _handleFavIcon(bool isFav) {
    return ObsValueConsumer<bool>(
        observable: isLoadingFavObs,
        builder: (context, isLoading) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: !isLoading,
                child: GestureDetector(
                  onTap: ()=> _handleSwitchFav(isFav),
                  child: Visibility(
                    visible: isFav,
                    replacement: SvgPicture.asset(
                      Res.heart,
                      height: 22,
                      width: 22,
                      color: widget.unFavColor ?? context.colors.black,
                    ),
                    child: SvgPicture.asset(
                      Res.heartSolid,
                      height: 22,
                      width: 22,
                      color: context.colors.appColorBlue,
                    ),
                  ),
                ),
              ),
              if (isLoading)
                Container(
                  width: 14,
                  height: 14,
                  margin: const EdgeInsets.all(3),
                  child: CupertinoActivityIndicator(
                      color: context.colors.grey.withValues(alpha: .7)),
                ),
            ],
          );
        });
  }

  Future<void> _handleSwitchFav(bool isFav) async {
    isLoadingFavObs.setValue(true);
    await _callApi(isFav);
    isLoadingFavObs.setValue(false);
  }

  Future<void> _callApi(bool isFav) async{
    if (isFav) {
      await widget.removeFav!();
      widget.isFavObs.setValue(false);
    }else{
      await widget.onFav!();
      widget.isFavObs.setValue(true);
    }

  }
}
