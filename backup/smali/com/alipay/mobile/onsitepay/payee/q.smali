.class final Lcom/alipay/mobile/onsitepay/payee/q;
.super Ljava/lang/Object;
.source "FacePayeeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/q;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/q;->a:Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payee/q;->b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/q;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/q;->a:Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/q;->b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    .line 185
    return-void
.end method
