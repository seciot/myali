.class Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->c(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->c(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
