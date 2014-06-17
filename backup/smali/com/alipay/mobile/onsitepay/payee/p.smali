.class final Lcom/alipay/mobile/onsitepay/payee/p;
.super Ljava/lang/Object;
.source "FacePayeeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/p;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iput p2, p0, Lcom/alipay/mobile/onsitepay/payee/p;->a:I

    iput-boolean p3, p0, Lcom/alipay/mobile/onsitepay/payee/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/p;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iget v1, p0, Lcom/alipay/mobile/onsitepay/payee/p;->a:I

    iget-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payee/p;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;IZ)V

    .line 171
    return-void
.end method
