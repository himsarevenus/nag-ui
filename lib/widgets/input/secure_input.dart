part of 'index.dart';

class NAGSecureTextInput extends StatefulWidget {
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
  final bool isError;

  const NAGSecureTextInput({
    this.controller,
    this.label,
    this.placeholder,
    this.secureText = true,
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
    this.isError = false,
    this.errorMessage,
    Key? key,
  }) : super(key: key);

  @override
  NAGSecureTextInputState createState() => NAGSecureTextInputState();
}

class NAGSecureTextInputState extends State<NAGSecureTextInput> {
  bool isSecure = true;

  @override
  void initState() {
    super.initState();
    isSecure = widget.secureText;
  }

  @override
  Widget build(BuildContext context) {
    return NAGTextInput(
      controller: widget.controller,
      label: widget.label,
      placeholder: widget.placeholder,
      secureText: isSecure,
      onTapTrailingIcon: widget.onTapTrailingIcon,
      leadingIcon: widget.leadingIcon,
      suffixIcon: InkWell(
        onTap: () {
          setState(() {
            isSecure = !isSecure;
          });
        },
        child: !isSecure
            ? const Icon(Icons.visibility_outlined)
            : const Icon(Icons.visibility_off_outlined),
      ),
      onSubmit: widget.onSubmit,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      isRequired: widget.isRequired,
      isDisabled: widget.isDisabled,
      isInputArea: widget.isInputArea,
      formatter: widget.formatter,
      validator: widget.validator,
      initialValue: widget.initialValue,
      inputHeight: widget.inputHeight,
      inputAction: widget.inputAction,
      // isError: widget.isError,
      errorMessage: widget.errorMessage,
    );
  }
}
