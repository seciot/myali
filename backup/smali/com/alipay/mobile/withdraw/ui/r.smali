.class final Lcom/alipay/mobile/withdraw/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;

.field final synthetic b:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/r;->b:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/withdraw/ui/r;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/r;->b:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/r;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    return-void
.end method
