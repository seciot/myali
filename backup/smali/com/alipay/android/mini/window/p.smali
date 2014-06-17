.class final Lcom/alipay/android/mini/window/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/mini/window/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/p;->c:Lcom/alipay/android/mini/window/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/p;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/mini/window/p;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/p;->c:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->a(Lcom/alipay/android/mini/window/MiniPayActivity;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/mini/window/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
