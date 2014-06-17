.class final Lcom/alipay/android/mini/window/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/mini/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/i;->b:Lcom/alipay/android/mini/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/mini/window/i;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/i;->a:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;I)V

    return-void
.end method
