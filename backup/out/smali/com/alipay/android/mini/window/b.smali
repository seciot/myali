.class final Lcom/alipay/android/mini/window/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/b;->a:Lcom/alipay/android/mini/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/b;->a:Lcom/alipay/android/mini/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    return-void
.end method
