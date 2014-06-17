.class Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->c(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Z

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->a(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->a(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u83b7\u53d6\u5931\u8d25\uff0c\u662f\u5426\u91cd\u8bd5"

    const-string/jumbo v3, "\u91cd\u8bd5"

    new-instance v4, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$1;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;)V

    const-string/jumbo v5, "\u4e0d\u4e86"

    new-instance v6, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$2;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$2;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
