.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iput-boolean p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->a:Z

    invoke-virtual {v0, v1, p2, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
