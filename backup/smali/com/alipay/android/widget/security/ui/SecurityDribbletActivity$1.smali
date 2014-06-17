.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bt:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bt:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bs:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;Z)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setNoPayPwd(Z)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
