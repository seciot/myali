.class final Lcom/alipay/android/mini/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/IUIForm;

.field final synthetic b:[Lcom/alipay/android/mini/uielement/ElementAction;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/IUIForm;[Lcom/alipay/android/mini/uielement/ElementAction;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/g;->a:Lcom/alipay/android/mini/window/IUIForm;

    iput-object p2, p0, Lcom/alipay/android/mini/util/g;->b:[Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/util/g;->a:Lcom/alipay/android/mini/window/IUIForm;

    iget-object v1, p0, Lcom/alipay/android/mini/util/g;->a:Lcom/alipay/android/mini/window/IUIForm;

    iget-object v2, p0, Lcom/alipay/android/mini/util/g;->b:[Lcom/alipay/android/mini/uielement/ElementAction;

    aget-object v2, v2, p2

    invoke-static {v2}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z

    return-void
.end method
