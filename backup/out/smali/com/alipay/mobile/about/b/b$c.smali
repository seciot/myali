.class final Lcom/alipay/mobile/about/b/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/about/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/alipay/mobile/about/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/b/b;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/about/b/b$c;->c:Lcom/alipay/mobile/about/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/about/b/b$c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
