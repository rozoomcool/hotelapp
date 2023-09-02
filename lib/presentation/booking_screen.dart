import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_validator/form_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_task_umatkereev_application/features/custom_text_form_field.dart';
import 'package:test_task_umatkereev_application/features/table_info_card.dart';
import 'package:test_task_umatkereev_application/features/tourist_card.dart';

import '../features/custom_button.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final GlobalKey<FormState> _infoForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _firstTouristForm = GlobalKey<FormState>();

  TextInputFormatter phoneFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  List<Widget> tourists = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/arrow_left.svg'),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Бронирование',
          style: Theme
              .of(context)
              .textTheme
              .titleLarge,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 1,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Chip(
                      backgroundColor: const Color(0xFFFFA800).withOpacity(0.2),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      label: Text(
                        '5 Превосходно',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color(0xFFFFA800)),
                      ),
                      avatar: const Icon(
                        Icons.star,
                        color: Color(0xFFFFA800),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Steigenberger Makadi',
                    style: Theme
                        .of(context)
                        .textTheme
                        .displayMedium,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text('Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                      style: Theme
                          .of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: const Color(0xFF0D72FF)))
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: const TableInfoCard(),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Form(
                key: _infoForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Информация о покупателе',
                      style: Theme
                          .of(context)
                          .textTheme
                          .displayMedium,
                    ),
                    const SizedBox(height: 20.0),
                    CustomTextFormField(
                      labelText: 'номер телефона',
                      initialValue: '+7 (951) 555-99-00',
                      keyboardType: TextInputType.phone,
                      fieldMask: phoneFormatter,
                      validator:
                      ValidationBuilder().phone().minLength(11).build(),
                      onTapOutsideCallback: (p) => validateMainInfo(),
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormField(
                        labelText: 'Почта',
                        initialValue: 'examplemail.000@mail.ru',
                        validator:
                        ValidationBuilder().email().maxLength(50).build(),
                        onTapOutsideCallback: (p) => validateMainInfo()),
                    const SizedBox(height: 8.0),
                    Text(
                      'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
                      style: Theme
                          .of(context)
                          .textTheme
                          .labelSmall,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: TouristCard(
                formKey: _firstTouristForm,
                closed: false,
                title: 'Первый турист',
              ),
            ),
            ...tourists,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Добавить туриста',
                    style: Theme
                        .of(context)
                        .textTheme
                        .displayMedium,
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0D72FF),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: SvgPicture.asset(
                        'assets/add.svg',
                      ),
                    ),
                    onTap: () =>
                        setState(() =>
                            tourists.add(TouristCard(
                              closed: true,
                              title:
                              '${tourists.length + 2 == 2 ? 'Второй' : tourists
                                  .length + 2 == 3 ? 'Третий' : '${tourists
                                  .length + 2}-ый'} турист',
                            ))),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Тур',
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium),
                      Text('186 600 ₽',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium)
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Топливный сбор',
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium),
                      Text('9 300 ₽',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium)
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Сервисный сбор',
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium),
                      Text('2 136 ₽',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium)
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('К оплате',
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium),
                      Text('198 036 ₽',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: const Color(0xFF0D72FF)))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
          child: CustomButton(
            label: 'Оплатить 198 036 ₽',
            onPressed: () {
              if(_firstTouristForm.currentState?.validate()??false) {
                Navigator.pushNamed(context, '/order_status');
              }
          },
          ),
        ),
      ),
    );
  }

  validateMainInfo() {
    _infoForm.currentState?.validate();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
