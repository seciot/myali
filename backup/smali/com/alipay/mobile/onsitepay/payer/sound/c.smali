.class final Lcom/alipay/mobile/onsitepay/payer/sound/c;
.super Ljava/lang/Object;
.source "NearbyFriend.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payer/sound/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/b;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->c:Lcom/alipay/mobile/onsitepay/payer/sound/b;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->c:Lcom/alipay/mobile/onsitepay/payer/sound/b;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/b;->a:Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->a:Lcom/alipay/mobile/common/misc/CircularImageView;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->access$000(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)Lcom/alipay/mobile/common/misc/CircularImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_0
    return-void
.end method
