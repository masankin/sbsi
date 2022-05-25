import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sbsi/common/app_images.dart';

import '../../../../common/app_colors.dart';
import '../../../../generated/l10n.dart';
import '../../../commons/appbar.dart';
import '../../../widgets/button/button_filled.dart';
import '../sign_up_logic.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  final logic = Get.put(SignUpLogic());
  final state = Get.find<SignUpLogic>().state;

  @override
  Widget build(BuildContext context) {
    final headline6 = Theme.of(context).textTheme.headline6;
    final body1 = Theme.of(context).textTheme.bodyText1;
    final body2 = Theme.of(context).textTheme.bodyText2;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        title: S.of(context).verify_account,
        isCenter: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width,
                progressColor: AppColors.yellowStatus,
                backgroundColor: Colors.grey[300],
                lineHeight: 5,
                percent: 0.4,
                padding: EdgeInsets.zero,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Bước 2: Xác thực tài khoản',
                  style: headline6?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(AppImages.camera),
                    const SizedBox(width: 8),
                    Text(
                      'Chụp ảnh giấy tờ',
                      style: headline6?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 24 / 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Vui lòng sử dụng cùng 1 loại giấy tờ để chụp ảnh mặt trước và mặt sau',
                  style: headline6?.copyWith(fontSize: 14, height: 20 / 14),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset(
                              AppImages.idCard1,
                            ))),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset(
                              AppImages.idCard2,
                            )))
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(AppImages.user_image1),
                    const SizedBox(width: 8),
                    Text('Xác thực khuôn mặt',
                        style: body1?.copyWith(fontWeight: FontWeight.w700))
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Chỉ cần 1 phút để thực hiện',
                    style: body2?.copyWith(height: 20 / 14)),
              ),
              const SizedBox(height: 16),
              Center(
                child: SvgPicture.asset(AppImages.user_big),
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    color: AppColors.PastelSecond2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(AppImages.camera1),
                      const SizedBox(width: 6.5),
                      Text(
                        'Chụp ảnh',
                        style: body1?.copyWith(color: AppColors.buttonOrange),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ButtonFill(
                        voidCallback: () {
                          Get.bottomSheet(
                            Builder(builder: (context){
                              return Container(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(height: 24),
                                      Center(
                                        child: Text(
                                          S.of(context).guide_take,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              ?.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                      Text(
                                        "Quý khách vui lòng đảm bảo hình chụp:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          SvgPicture.asset(AppImages.tick_circle),
                                          const SizedBox(width: 10),
                                          Text(
                                            "Không bị mờ, tối hay chói sáng",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          SvgPicture.asset(AppImages.tick_circle),
                                          const SizedBox(width: 10),
                                          Text(
                                            "Không bị mất góc, bấm lỗ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          SvgPicture.asset(AppImages.tick_circle),
                                          const SizedBox(width: 10),
                                          Text(
                                            "Là bản gốc, còn hạn sử dụng",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                      SvgPicture.asset(
                                          'assets/icon_svg/cmnd_bad.svg',
                                          width:
                                          MediaQuery.of(context).size.width,
                                          fit: BoxFit.fitWidth),
                                      const SizedBox(height: 32),
                                      SizedBox(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          child: ButtonFill(
                                              voidCallback: () {},
                                              title:
                                              S.of(context).continue_step)),
                                      const SizedBox(height: 29),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            isScrollControlled: true,
                            ignoreSafeArea: false, // add this
                          );
                        },
                        title: S.of(context).continue_step)),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}