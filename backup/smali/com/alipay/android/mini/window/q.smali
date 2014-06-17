.class final Lcom/alipay/android/mini/window/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/android/mini/window/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/q;->d:Lcom/alipay/android/mini/window/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/window/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/mini/window/q;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/window/q;->d:Lcom/alipay/android/mini/window/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/window/q;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/mini/window/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/q;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/mini/widget/SystemDefaultDialog;->a(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method
