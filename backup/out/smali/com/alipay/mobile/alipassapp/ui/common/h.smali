.class final Lcom/alipay/mobile/alipassapp/ui/common/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getExtWidth(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_info_field_horizontal:I

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_label:I

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_value:I

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v9, -0x2

    invoke-direct {v0, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mPaddingVertical:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mlabelTextColor:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mlableTextSize:I

    int-to-float v0, v0

    invoke-virtual {v1, v6, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mValueTextColor:I

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mValueTextSize:I

    int-to-float v0, v0

    invoke-virtual {v4, v6, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_vtwo:I

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1, v11, v11, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2, v9, v0, v10}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/h;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget v1, v1, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1, v5, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(IILcom/alipay/mobile/commonui/widget/APLinearLayout;)V

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    :cond_4
    return-void
.end method
