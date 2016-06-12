/*
 * Copyright 2013 David Schreiber
 *           2013 John Paul Nalog
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

package com.hp.android.halcyon.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.fq.android.plus.R;
import com.fq.library.cardview.FancyCoverFlow;
import com.fq.library.cardview.FancyCoverFlowAdapter;

public class FancyCoverFlowSampleAdapter extends FancyCoverFlowAdapter {

    // =============================================================================
    // Private members
    // =============================================================================

    private int[] images = {R.drawable.ic_launcher, R.drawable.ic_launcher, R.drawable.ic_launcher, R.drawable.ic_launcher, R.drawable.ic_launcher, R.drawable.ic_launcher,};

    // =============================================================================
    // Supertype overrides
    // =============================================================================

    @Override
    public int getCount() {
        return images.length;
    }

    @Override
    public Integer getItem(int i) {
        return images[i];
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getCoverFlowItem(int i, View reuseableView, ViewGroup viewGroup) {
        ImageView imageView = null;

        if (reuseableView != null) {
            imageView = (ImageView) reuseableView;
        } else {
            imageView = new ImageView(viewGroup.getContext());
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new FancyCoverFlow.LayoutParams(600, 800));

        }

        imageView.setImageResource(this.getItem(i));
        return imageView;
    }
}
