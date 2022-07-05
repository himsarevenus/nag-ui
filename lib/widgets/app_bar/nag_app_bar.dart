part of 'index.dart';

class NAGAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);

  final String title;
  final Color backgroundColor;

  final Widget? leading;
  final List<Widget>? trailing;
  final bool? centerTitle;
  final double? elevation;
  final bool autoAddLeading;
  final Widget? customTitle;
  final bool withSpacing;

  /// Set icon theme and text style to be white colors
  /// Default will be false
  final bool lightTheme;

  const NAGAppBar(
    this.title, {
    Key? key,
    this.leading,
    this.trailing,
    this.backgroundColor = Colors.white,
    this.centerTitle,
    this.autoAddLeading = true,
    this.customTitle,
    this.elevation,
    this.withSpacing = false,
    this.lightTheme = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      title: customTitle ??
          Text(
            title,
            style: NAGMediumText.header5.neutral80.copyWith(
              color: lightTheme ? NAGColors.light : null,
            ),
          ),
      iconTheme: IconThemeData(
        color: lightTheme ? NAGColors.light : NAGColors.neutral.shade800,
      ),
      titleSpacing: !withSpacing ? 0 : null,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      leading: leading,
      actions: trailing,
      automaticallyImplyLeading: autoAddLeading,
    );
  }
}

class NAGSliverAppBar extends StatefulWidget {
  final String? title;
  final bool? centerTitle;
  final Widget? flexibleSpace;
  final Color? backgroundColor;
  final bool pinned;
  final ScrollController? scrollController;
  final double? expandedHeight;
  final VoidCallback onPressBack;
  final List<Widget>? trailing;
  final PreferredSizeWidget? bottom;
  final PreferredSizeWidget? bottomWithLine;
  final bool isBottomHide;
  final bool isTitleWidget;
  final Widget? titleWidget;

  const NAGSliverAppBar({
    Key? key,
    this.title = "",
    this.centerTitle,
    this.flexibleSpace,
    this.backgroundColor = NAGColors.light,
    this.pinned = false,
    this.scrollController,
    this.expandedHeight,
    required this.onPressBack,
    this.trailing,
    this.bottom,
    this.bottomWithLine,
    this.isBottomHide = true,
    this.isTitleWidget = false, //must set titleWidget if true
    this.titleWidget,
  }) : super(key: key);

  @override
  _NAGSliverAppBarState createState() => _NAGSliverAppBarState();
}

class _NAGSliverAppBarState extends State<NAGSliverAppBar> {
  late double expandedHeight;
  bool isCollapsed = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.expandedHeight == null) {
      expandedHeight = MediaQuery.of(context).size.width / 2;
    }
  }

  @override
  void didUpdateWidget(covariant NAGSliverAppBar oldWidget) {
    if (oldWidget.expandedHeight != widget.expandedHeight &&
        widget.expandedHeight != null) {
      setState(() {
        expandedHeight = widget.expandedHeight!;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    if (widget.scrollController != null) {
      widget.scrollController!.addListener(_scrollListener);
    }
    if (widget.expandedHeight != null) expandedHeight = widget.expandedHeight!;
  }

  void _scrollListener() {
    if (widget.scrollController!.offset >
            (expandedHeight - (13 / 7 * kToolbarHeight)) &&
        !isCollapsed) {
      setState(() {
        isCollapsed = true;
      });
    } else if (widget.scrollController!.offset <=
            (expandedHeight - (13 / 7 * kToolbarHeight)) &&
        isCollapsed) {
      setState(() {
        isCollapsed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme:
          IconThemeData(color: isCollapsed ? NAGColors.dark : NAGColors.light),
      // floating: true,
      titleSpacing: 0,
      pinned: widget.pinned,
      title: widget.isTitleWidget
          ? isCollapsed
              ? widget.titleWidget
              : const SizedBox()
          : Text(
              isCollapsed ? widget.title! : "",
              style: NAGMediumText.body1.neutral80.copyWith(
                fontSize: 18,
              ),
            ),
      bottom: widget.isBottomHide
          ? isCollapsed
              ? widget.bottom
              : null
          : isCollapsed
              ? widget.bottomWithLine
              : widget.bottom,
      actions: widget.trailing,
      elevation: 1,
      flexibleSpace: widget.flexibleSpace,
      expandedHeight: expandedHeight,
      toolbarHeight: kToolbarHeight,
      backgroundColor:
          isCollapsed ? widget.backgroundColor : Colors.transparent,
      centerTitle: widget.centerTitle,
      leading: IconButton(
        onPressed: widget.onPressBack,
        icon: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
