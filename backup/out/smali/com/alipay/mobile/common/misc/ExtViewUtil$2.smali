.class final Lcom/alipay/mobile/common/misc/ExtViewUtil$2;
.super Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;


# instance fields
.field final synthetic val$callback:Lcom/alipay/mobile/common/misc/LoadUrlCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/LoadUrlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$2;->val$callback:Lcom/alipay/mobile/common/misc/LoadUrlCallback;

    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$2;->val$callback:Lcom/alipay/mobile/common/misc/LoadUrlCallback;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/common/misc/LoadUrlCallback;->callback(Landroid/graphics/Bitmap;)V

    return-void
.end method
