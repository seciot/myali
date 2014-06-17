.class final Lcom/alipay/android/mini/uielement/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/BaseComponent;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/BaseComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/a;->a:Lcom/alipay/android/mini/uielement/BaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Lcom/alipay/android/mini/uielement/BaseComponent;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->a:Lcom/alipay/android/mini/uielement/BaseComponent;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/a;->a:Lcom/alipay/android/mini/uielement/BaseComponent;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Lcom/alipay/android/mini/uielement/BaseComponent;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
