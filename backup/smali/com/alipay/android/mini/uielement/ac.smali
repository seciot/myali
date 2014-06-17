.class final Lcom/alipay/android/mini/uielement/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UISelectButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UISelectButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->b(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->a(Lcom/alipay/android/mini/uielement/UISelectButton;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ac;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/UISelectButton;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/UISelectButton;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
