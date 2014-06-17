.class final Lcom/alipay/mobile/withdraw/ui/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

.field final synthetic b:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/ag;->b:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/withdraw/ui/ag;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ag;->b:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/ag;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method
