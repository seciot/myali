.class final Lcom/alipay/mobile/withdraw/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/ac;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ac;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Ljava/lang/String;)V

    return-void
.end method
