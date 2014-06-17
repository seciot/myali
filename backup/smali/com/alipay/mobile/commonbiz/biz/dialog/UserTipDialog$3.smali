.class Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->b(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
