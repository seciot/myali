.class final Lcom/alipay/mobile/onsitepay/payee/r;
.super Ljava/lang/Object;
.source "FacePayeeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/r;->b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/r;->b:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V

    .line 199
    return-void
.end method
