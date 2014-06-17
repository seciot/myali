.class public Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/PopupWindow;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->user_tip_popupwindow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->e:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->user_pop_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->user_tip_alertdialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->b:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->c:I

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->btn_user_tip_ok:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->g:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->btn_user_tip_no:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->h:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->user_tip_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->user_txt:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->i:Landroid/view/View$OnClickListener;

    return-void
.end method
