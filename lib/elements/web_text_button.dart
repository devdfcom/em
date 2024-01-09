import 'package:flutter/material.dart';

class WebTextButton extends StatefulWidget {
  const WebTextButton({
    this.onPressed,
    required this.child,
    this.routeName,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final String? routeName;

  @override
  State<WebTextButton> createState() => _WebTextButtonState();
}

class _WebTextButtonState extends State<WebTextButton> {
  bool get _isRoute => widget.routeName != null;

  bool get _isCurrentRoute => _isRoute && ModalRoute.of(context)?.settings.name == widget.routeName;

  void _onPressed() =>
      _isRoute ? (_isCurrentRoute ? null : Navigator.pushNamed(context, widget.routeName!)) : widget.onPressed?.call();

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _isCurrentRoute ? Theme.of(context).colorScheme.primary : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: TextButton(
          onPressed: _onPressed,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  letterSpacing: 0.15,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: widget.child,
        ),
      );
}
