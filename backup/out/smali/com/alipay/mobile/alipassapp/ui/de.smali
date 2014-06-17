.class final Lcom/alipay/mobile/alipassapp/ui/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/de;->a:Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/de;->a:Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->b()V

    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/de;->a:Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/de;->a:Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a()V

    return-void
.end method
