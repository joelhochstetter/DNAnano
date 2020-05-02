/*
 * OGLDrawer.h
 *
 *  Created on: 20/ott/2013
 *      Author: lorenzo
 */

#ifndef OGLDRAWER_H_
#define OGLDRAWER_H_

#include "Drawer.h"

class OGLDrawer: public Drawer {
protected:
	int _resolution;
	glm::mat4 _view_matrix;
	bool _selection_mode;
	Shape *_curr_shape;

public:
	OGLDrawer();
	virtual ~OGLDrawer();

	void increase_resolution();
	void decrease_resolution();
	void set_resolution(int res) { _resolution = res; }
	void set_view_matrix(glm::mat4 &m) { _view_matrix = m; }
	void toggle_selection_mode();
	/**
	 * @brief Sets the color for the next object to be drawed. If selection mode is enabled it overrides the color with one computed using the _current_id
	 *
	 * @param color
	 */
	void set_color(glm::vec4 color);

	virtual void visit(Drawable &);
	virtual void visit(Scene &);
	virtual void visit(Cylinder &);
	virtual void visit(Sphere &);
	virtual void visit(DNAStrand &);
	virtual void visit(Nucleotide &);
	virtual void visit(DHS &);
	virtual void visit(Arrow &);
	virtual void visit(PatchyParticle &);
	virtual void visit(Triangle &);
	virtual void visit(Group &);
};

#endif /* OGLDRAWER_H_ */
