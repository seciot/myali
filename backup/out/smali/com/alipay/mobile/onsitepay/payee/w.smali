.class final Lcom/alipay/mobile/onsitepay/payee/w;
.super Ljava/lang/Object;
.source "FacePayeeHead.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/v;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/v;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/w;->c:Lcom/alipay/mobile/onsitepay/payee/v;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/w;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payee/w;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/w;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/w;->c:Lcom/alipay/mobile/onsitepay/payee/v;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/v;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/w;->a:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/w;->c:Lcom/alipay/mobile/onsitepay/payee/v;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/v;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/w;->c:Lcom/alipay/mobile/onsitepay/payee/v;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/payee/v;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    #calls: Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->access$100(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Landroid/graphics/Bitmap;)V

    .line 186
    :cond_0
    return-void
.end method
