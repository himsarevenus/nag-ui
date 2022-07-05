part of 'index.dart';

class NAGTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final String? label;
  final bool secureText;
  final Function? onTapTrailingIcon;
  final Widget? leadingIcon;
  final Widget? suffixIcon;
  final void Function(String value)? onSubmit;
  final void Function(String value)? onChanged;
  final TextInputType keyboardType;
  final bool isRequired;
  final bool isInputArea;
  final bool isDisabled;
  final List<TextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final String? initialValue;
  final double inputHeight;
  final TextInputAction? inputAction;
  final String? errorMessage;

  /// Force error on the text input
  /// If [isError] is [True]
  /// Borders will be [NAGColors.negative] and
  /// error icon as [suffixIcon]
  // final bool isError;

  const NAGTextInput({
    this.controller,
    this.label,
    this.placeholder,
    this.secureText = false,
    this.onTapTrailingIcon,
    this.leadingIcon,
    this.suffixIcon,
    this.onSubmit,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.isRequired = false,
    this.isDisabled = false,
    this.isInputArea = false,
    this.formatter,
    this.validator,
    this.initialValue,
    this.inputHeight = 40,
    this.inputAction = TextInputAction.done,
    this.errorMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isError = errorMessage != null && errorMessage != "";
    final borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color:
            isError ? NAGColors.negative.shade700 : NAGColors.neutral.shade400,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Column(
                children: [
                  Text(
                    label!,
                    style: NAGMediumText.caption1.neutral80,
                  ),
                  const SizedBox(height: 8),
                ],
              )
            : const SizedBox(),
        Container(
          height: isInputArea ? null : inputHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isDisabled ? Colors.grey[200] : Colors.white,
          ),
          child: TextFormField(
            initialValue: initialValue,
            inputFormatters: formatter,
            validator: validator,
            enabled: !isDisabled,
            onChanged: onChanged,
            obscureText: secureText,
            style: NAGMediumText.body1,
            keyboardType: keyboardType,
            controller: controller,
            onFieldSubmitted: onSubmit,
            minLines: isInputArea ? 4 : 1,
            maxLines: isInputArea ? 4 : 1,
            decoration: InputDecoration(
              hintStyle: NAGRegularText.body1.neutral50,
              hintText: placeholder,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 6,
              ),
              border: borderDecoration,
              enabledBorder: borderDecoration,
              focusedBorder: isError
                  ? borderDecoration
                  : OutlineInputBorder(
                      borderSide: BorderSide(color: NAGColors.primary),
                    ),
              prefixIcon: leadingIcon,
              suffixIcon: suffixIcon ??
                  (isError
                      ? Icon(
                          Icons.warning_amber_rounded,
                          color: NAGColors.negative.shade700,
                        )
                      : suffixIcon),
            ),
          ),
        ),
        if (errorMessage != null && errorMessage != "")
          Column(
            children: [
              const SizedBox(height: 8),
              Text(
                errorMessage ?? "",
                style: NAGMediumText.caption1.red70,
              ),
            ],
          )
      ],
    );
  }
}
