.class final Lcom/alipay/mobile/alipassapp/ui/ef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ef;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ef;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ef;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ef;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void
.end method
