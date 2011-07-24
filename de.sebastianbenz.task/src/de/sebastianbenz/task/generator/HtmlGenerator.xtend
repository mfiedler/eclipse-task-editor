package de.sebastianbenz.task.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IGenerator
import org.eclipse.xtext.generator.IFileSystemAccess
import static com.google.common.collect.Iterables.*
import de.sebastianbenz.task.TaskModel
import de.sebastianbenz.task.Content
import de.sebastianbenz.task.Task
import de.sebastianbenz.task.Note
import de.sebastianbenz.task.Code
import de.sebastianbenz.task.Project
import de.sebastianbenz.task.EmptyLine
import org.eclipse.xtext.xtend2.lib.StringConcatenation

class HtmlGenerator implements de.sebastianbenz.task.generator.TaskGenerator {
	   
	override StringConcatenation generate(TaskModel taskModel){
		
		'''
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
		<head> 
		<style type="text/css">
			.done {
				text-decoration: line-through;
			}
			.tag {
				color: gray;
			}
			body {
			  font-family: "Helvetica Neue", helvetica, arial, sans-serif;
			  font-size: 14px;
			  line-height: 1.4em;
			  color: #333333;
			}
			ul{
				list-style: none;
				margin-left: 0;
				padding-left: 0em;
				text-indent: 0em;
			}
			ul li:before {
				content: "\2D";	
				margin-right: 0.5em;
			}
			.note{
				color: gray;
			}
		</style
		</head> 
		<body> 
		�FOR content : taskModel.contents�
			�generate(content)�
		�ENDFOR�
		</body>
		''' 
	} 
	
	def dispatch generate(Note note){
		'''
		<p class="note">�note.value��generateTags(note)�</p>
		'''
	}
	
	def dispatch generate(Task task){
		'''
		<ul><li�IF task.done� class="done"�ENDIF�>�task.value.trim()��generateTags(task)�</li></ul>		
		'''
	}
	
	def dispatch generate(Project project){
		var level = project.level + 1
		'''
		<h�level�>�project.value��generateTags(project)�</h�level�>
		'''
	}
	
	def dispatch generate(EmptyLine emptyLine){
		'''
		
		'''
	}
	
	def dispatch generate(Code code){
		''' 
		<pre><code>
		�code.value�
		<pre><code>
		'''
	}
	
	
	def generateTags(Content content){
		'''�FOR tag : content.tags�<span class="tag">�tag�</span> �ENDFOR�'''
	}
}
 