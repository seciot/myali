.class public Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "account_switch"
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchToMobile"
    .end annotation
.end field

.field b:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchToAlipay"
    .end annotation
.end field

.field c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchToTaobao"
    .end annotation
.end field

.field d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btnCancle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fS:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setResult(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->finish()V

    return-void

    :cond_1
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fR:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fT:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setResult(I)V

    goto :goto_0
.end method
