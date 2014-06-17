.class final Lcom/alipay/android/mini/window/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/m;->a:Lcom/alipay/android/mini/window/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/m;->a:Lcom/alipay/android/mini/window/l;

    iget-object v0, v0, Lcom/alipay/android/mini/window/l;->g:Lcom/alipay/android/mini/window/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/window/m;->a:Lcom/alipay/android/mini/window/l;

    iget-object v1, v1, Lcom/alipay/android/mini/window/l;->b:[Lcom/alipay/android/mini/event/ActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->a([Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
