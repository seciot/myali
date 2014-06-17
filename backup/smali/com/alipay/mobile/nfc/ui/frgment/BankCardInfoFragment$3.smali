.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a()V

    return-void
.end method
